.class public final Ldxy;
.super Lcom/wandoujia/appmanager/LocalAppChangedListener;
.source "RootPopListener.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;-><init>()V

    .line 20
    iput-object p1, p0, Ldxy;->a:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    iget-object v0, p0, Ldxy;->a:Landroid/content/Context;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->vertical_title_app:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    if-eqz p2, :cond_0

    .line 26
    iget-object v0, p0, Ldxy;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leeh;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    if-eqz p3, :cond_0

    .line 33
    iget-object v0, p0, Ldxy;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Ldxy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Leeh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;)V

    .line 35
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    if-eqz p3, :cond_0

    .line 40
    iget-object v0, p0, Ldxy;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leeh;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Ldxy;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Ldxy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leeh;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
