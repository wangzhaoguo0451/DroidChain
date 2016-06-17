.class public final Lfah;
.super Ljava/lang/Object;
.source "ALAppIconModel.java"

# interfaces
.implements Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;


# instance fields
.field public a:Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

.field public b:Ljava/lang/String;

.field public c:I

.field private d:Lcom/wandoujia/mvc/Action;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lfah;->a:Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    .line 23
    iput p2, p0, Lfah;->c:I

    .line 24
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfah;->b:Ljava/lang/String;

    .line 35
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 30
    :try_start_0
    iget-object v1, p1, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfah;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    iget-object v0, p1, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lfah;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;->App:Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lfah;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/wandoujia/mvc/Action;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lfah;->d:Lcom/wandoujia/mvc/Action;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lexq;

    iget-object v1, p0, Lfah;->a:Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lfah;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lexq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lfah;->d:Lcom/wandoujia/mvc/Action;

    .line 54
    :cond_0
    iget-object v0, p0, Lfah;->d:Lcom/wandoujia/mvc/Action;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lfah;->c:I

    return v0
.end method
