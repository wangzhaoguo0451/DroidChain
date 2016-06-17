.class final Leaj;
.super Ljava/lang/Object;
.source "CasualIconAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leah;


# direct methods
.method constructor <init>(Leah;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Leaj;->a:Leah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Leaj;->a:Leah;

    iget-object v0, v0, Leah;->a:Leag;

    iget-object v0, v0, Leag;->a:Landroid/view/View;

    iget-object v1, p0, Leaj;->a:Leah;

    iget-object v1, v1, Leah;->a:Leag;

    iget-object v1, v1, Leag;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leaj;->a:Leah;

    iget-object v2, v2, Leah;->a:Leag;

    iget-object v2, v2, Leag;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    .line 73
    iget-object v0, p0, Leaj;->a:Leah;

    iget-object v0, v0, Leah;->a:Leag;

    iget-object v0, v0, Leag;->a:Landroid/view/View;

    const-string v1, "game_suggestion"

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v4, p0, Leaj;->a:Leah;

    iget-object v4, v4, Leah;->a:Leag;

    iget-object v4, v4, Leag;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v4}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 76
    return-void
.end method
