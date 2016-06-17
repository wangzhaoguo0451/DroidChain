.class public final Ldzt;
.super Ljava/lang/Object;
.source "GameFolderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Ldzt;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Ldzt;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    invoke-static {}, Ldxo;->c()V

    .line 145
    const-string v0, "game_upgrade"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UPGRADE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "upgrade_from_bar"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 148
    return-void
.end method
