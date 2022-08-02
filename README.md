# Codebase-ProductTracker

Kullanılan Teknolojiler : ASP .Net Core MVC, MSSQL, Entity Framework, Katmanlı Mimari (layered architecture)
Ekstra : Stored Procedure kullanılmıştır. 2 tarih arasında çıkışı yapılan ürünlerin listesinin alındığı sayfa oluşturulmuştur.
NuGet Packages : Microsoft.EntityFrameworkCore, Microsoft.EntityFrameworkCore.Tools, Microsoft.EntityFrameworkCore.SqlServer (5.0.17 versiyonunu kullandım 
.NET 5.0 kullandığım için.)

(Veritabanı scripti ve stored procedureler "CodebaseDbScript.sql" dosyasında oluşturulmuştur.)

## Proje Mimarisi
- BLL(Business Logic Layer) : Product ve Customer servicelerinin olduğu class library (istenilen fonksiyonların gerçekleştirilmesi)

- Data : Data ve Model sınıflarının bulunduğu class library (database'in oluşturulması)

- UI : Front-end kısmı (textboxlardan girilen verilerin controllerda istenilen fonksiyona gönderilmesi)

## Proje Oluşturulurken İzlenilen Yol
### Models
Code-first yaklaşımıyla projeyi yaptım. Önce databasedeki tabloları oluşturmak için "Product" ve "Customer" modellerini oluşturdum ve gerekli propertylerini tanımladım. ViewModel classında ise Product ve Customer classlarını property olarak belirleyip ürünün satılma kısmında (front-end tarafında) aynı anda 2 modeli kullanacağım için oluşturduğum model classıdır. Son olarak Time classının işlevi ise "startTime" ve "endTime" olarak belirlediğim iki property sayesinde kullanıcı tarafından alacağım 2 DateTime referans tipindeki verileri gerekli fonksiyona parametre olarak vermektir.

### Data
Entity Framework'ün DbContext sınıfını kullandım. DbContext veritabanımızla uygulamamız arasında sorgulama, güncelleme, silme gibi işlemleri yapmamız için olanak sağlar. MSSQL'de bir database oluşturduktan sonra ConnectionStringi "appsettings.json" dosyasında ve "Startup.cs" classında UseSqlServer fonksiyonuna parametre vererek bağlantıyı oluşturdum. Bağlantıyı kurduktan sonra "add-migration Initial" ve "update-database" komutlarıyla modellerimi kullanarak "Products" ve "Customers" tablelarımı SQL komutu kullanmadan oluşturdum. 

### Controllers
Daha sonra servicelerimi oluşturup, istenilen fonksiyonları interfaceler ile inherit ettim. Bu servisleri kullanabilmek için "Startup.cs" classında gerekli dependency injectionları yaparak servicelerimi projeye ekledim. Controller dosyasında bulunan Product ve Customer controllerları da servisleri kullanarak istenilen fonksiyonları gerçekleştiriyor. Product controller sınıfında productları listeleme, yeni product ekleme, productı güncelleme ve productı silme, Customer controller sınıfında ise productı müşteriye satma kısmı ve 2 tarih arasında satılan productların olduğu bir rapor sayfası oluşturma mevcuttur. 

### UI Kısmı (View)
UI kısmı için Microsoft'un Razor Pages teknolojisini kullandım. Oluşturulan textboxlar ve butonlar sayesinde girilen verileri istenilen fonksiyona parametre olarak gönderdim. 

## Projeyi Çalıştırmak
Projeyi clonelayıp Visual Studio yardımıyla solution'ı run edebilirsiniz.
