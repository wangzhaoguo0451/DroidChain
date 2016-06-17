.class public final Ldzw;
.super Leeg;
.source "GameFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leeg",
        "<",
        "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Ldzw;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-direct {p0}, Leeg;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-direct {p0, p1}, Ldzw;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    if-nez v0, :cond_3

    .line 481
    :cond_0
    invoke-static {p3}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    move-result-object v2

    .line 484
    :goto_0
    invoke-virtual {p0, p1}, Ldzw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    .line 485
    new-instance v1, Ldzx;

    invoke-direct {v1, p0, v0, p1}, Ldzx;-><init>(Ldzw;Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 497
    invoke-static {}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leat;

    .line 498
    if-nez v1, :cond_2

    .line 499
    new-instance v1, Leat;

    invoke-direct {v1}, Leat;-><init>()V

    .line 500
    invoke-static {}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v3, v1

    :goto_1
    move-object v1, v2

    .line 502
    check-cast v1, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    if-nez v0, :cond_1

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v1, v4}, Leat;->a(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;Leax;)V

    .line 504
    invoke-static {v2, p1}, Ld;->a(Landroid/view/View;I)V

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {v2, v1, v0, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    const-string v0, "local_game"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v4, "launcher_local_game"

    invoke-static {v2, v0, v1, v3, v4}, Ld;->b(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, v2}, Leny;->k(Landroid/view/View;)Leny;

    .line 505
    return-object v2

    .line 502
    :cond_1
    new-instance v4, Lebt;

    invoke-direct {v4, v0}, Lebt;-><init>(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V

    goto :goto_2

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, p2

    goto :goto_0
.end method
