.class public final Ldzy;
.super Leeg;
.source "GameFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leeg",
        "<",
        "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Leeg;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 432
    invoke-direct {p0}, Ldzy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    if-nez p2, :cond_2

    .line 437
    invoke-static {p3}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->b(Landroid/view/ViewGroup;)Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    move-result-object v1

    .line 440
    :goto_0
    invoke-static {}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leal;

    .line 441
    if-nez v0, :cond_1

    .line 442
    new-instance v0, Leal;

    invoke-direct {v0}, Leal;-><init>()V

    .line 443
    invoke-static {}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v3, v0

    :goto_1
    move-object v0, v1

    .line 446
    check-cast v0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    .line 447
    invoke-virtual {p0, p1}, Ldzy;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    .line 448
    add-int/lit8 v4, p1, 0x1

    iput v4, v3, Leal;->a:I

    .line 449
    iput-object v2, v3, Leal;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    .line 450
    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v0, v4}, Leal;->a(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;Leax;)V

    .line 451
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v3

    iget-object v3, v3, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v3}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v3

    const-string v4, "game_suggestion"

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v3

    iget-object v3, v3, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v3}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v3

    invoke-static {v3, p1}, Ld;->a(Landroid/view/View;I)V

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {v0, v3, v4, v5}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    invoke-static {v1, p1}, Ld;->a(Landroid/view/View;I)V

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {v1, v0, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    const-string v0, "game_suggestion"

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v4, "launcher_suggest_game"

    invoke-static {v1, v0, v2, v3, v4}, Ld;->b(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, v1}, Leny;->k(Landroid/view/View;)Leny;

    .line 455
    return-object v1

    .line 450
    :cond_0
    new-instance v4, Lebu;

    invoke-direct {v4, v2}, Lebu;-><init>(Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;)V

    goto :goto_2

    :cond_1
    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v1, p2

    goto/16 :goto_0
.end method
