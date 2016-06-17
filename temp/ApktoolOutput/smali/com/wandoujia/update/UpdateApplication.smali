.class public abstract Lcom/wandoujia/update/UpdateApplication;
.super Landroid/app/Application;
.source "UpdateApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wandoujia/update/LocalUpdateService;",
        ">",
        "Landroid/app/Application;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field public c:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/wandoujia/update/UpdateApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/update/UpdateApplication;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Lcom/wandoujia/update/LocalUpdateService$UpdateParams;
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 27
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 29
    invoke-virtual {p0}, Lcom/wandoujia/update/UpdateApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/config/GlobalConfig;->setAppContext(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/wandoujia/update/UpdateApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld;->y(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Class;

    .line 33
    invoke-static {v0}, Lhrm;->a(Ljava/lang/Class;)V

    .line 35
    invoke-virtual {p0}, Lcom/wandoujia/update/UpdateApplication;->b()Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/UpdateApplication;->c:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    .line 36
    iget-object v0, p0, Lcom/wandoujia/update/UpdateApplication;->c:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/UpdateApplication;->c:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    iget-object v0, v0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/UpdateApplication;->c:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    iget-object v0, v0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/update/UpdateApplication;->c:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    iget v0, v0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->notificationIcon:I

    invoke-static {v0}, Lhrm;->a(I)V

    .line 43
    invoke-virtual {p0}, Lcom/wandoujia/update/UpdateApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/update/UpdateApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/update/UpdateApplication;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "processName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/wandoujia/update/UpdateApplication;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packageName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/update/UpdateApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/update/UpdateApplication;->c:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    invoke-static {v0, v1}, Lhrm;->a(Landroid/content/Context;Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)Landroid/content/ComponentName;

    goto :goto_0
.end method
