.class public final Lctr;
.super Ljava/lang/Object;
.source "GLHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lctr;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 129
    invoke-static {}, Ldxo;->c()V

    .line 130
    const-string v0, "game_upgrade"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UPGRADE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "upgrade_from_bar"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lctr;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->c()V

    .line 134
    return-void
.end method
