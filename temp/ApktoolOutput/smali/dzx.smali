.class final Ldzx;
.super Ljava/lang/Object;
.source "GameFolderFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

.field private synthetic b:I

.field private synthetic c:Ldzw;


# direct methods
.method constructor <init>(Ldzw;Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Ldzx;->c:Ldzw;

    iput-object p2, p0, Ldzx;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    iput p3, p0, Ldzx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    .line 488
    iget-object v0, p0, Ldzx;->c:Ldzw;

    iget-object v0, v0, Ldzw;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    iget-object v1, p0, Ldzx;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    iget v2, p0, Ldzx;->b:I

    invoke-static {v0, p1, v1, v2}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;Landroid/view/View;Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;I)V

    .line 489
    iget-object v0, p0, Ldzx;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldzx;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {p1, v0, v1, v2}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    .line 491
    const-string v0, "local_game"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "long_click_local_game"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x0

    return v0
.end method
