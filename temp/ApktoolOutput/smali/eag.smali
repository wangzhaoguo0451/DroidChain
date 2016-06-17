.class public final Leag;
.super Ljava/lang/Object;
.source "CasualIconAction.java"

# interfaces
.implements Leaf;


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Leag;->a:Landroid/view/View;

    .line 32
    iput-object p2, p0, Leag;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Leag;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Leag;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-direct {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;-><init>()V

    .line 41
    iget-object v1, p0, Leag;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->setPackageName(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Leag;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->setTitle(Ljava/lang/String;)V

    .line 43
    new-instance v1, Leak;

    iget-object v2, p0, Leag;->a:Landroid/view/View;

    invoke-direct {v1, v2, v0}, Leak;-><init>(Landroid/view/View;Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V

    .line 44
    invoke-virtual {v1}, Leak;->a()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Leah;

    invoke-direct {v0, p0}, Leah;-><init>(Leag;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
