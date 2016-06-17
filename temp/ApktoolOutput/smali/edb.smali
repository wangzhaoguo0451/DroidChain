.class public final Ledb;
.super Ljava/lang/Object;
.source "UninstallGamePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Ledb;->a:Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 44
    new-instance v0, Leek;

    iget-object v1, p0, Ledb;->a:Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ledb;->a:Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

    invoke-static {v2}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->a(Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ledb;->a:Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

    invoke-static {v3}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->b(Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Leek;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Leek;->execute()V

    .line 45
    iget-object v0, p0, Ledb;->a:Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->c(Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;)Ledc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Ledb;->a:Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->c(Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;)Ledc;

    move-result-object v0

    iget-object v1, v0, Ledc;->a:Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->setOnPopupViewClicked(Ledc;)V

    iget v1, v0, Ledc;->b:I

    invoke-static {p1, v1}, Ld;->a(Landroid/view/View;I)V

    iget-object v1, v0, Ledc;->c:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Ledc;->c:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {p1, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    const-string v1, "local_game"

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UNINSTALL:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v4, "uninstall_game"

    invoke-static {p1, v1, v2, v3, v4}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    iget-object v1, v0, Ledc;->d:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ledc;->d:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->b(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, v0, Ledc;->d:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->c(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/PopupWindow;

    .line 48
    :cond_0
    return-void
.end method
