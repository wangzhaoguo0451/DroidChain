.class public Leuy;
.super Ljava/lang/Object;
.source "InstallHelper.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Leuy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Leuy;->a:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-static {}, Lhpa;->a()Lhpa;

    invoke-static {}, Lhpa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Ljava/lang/String;Z)V

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v0, Leuy;->a:Landroid/content/Context;

    invoke-static {v0}, Lj;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Leuy;->a:Landroid/content/Context;

    invoke-static {v0}, Lj;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/wandoujia/appmanager/AppManager;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
