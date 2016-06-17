.class public final Lctt;
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
    .line 205
    iput-object p1, p0, Lctt;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    const-string v1, "wdj://games/explore"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lctt;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-virtual {v1, v0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 211
    const-string v0, "game_launcher"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v3, p0, Lctt;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    sget v4, Lcom/wandoujia/game_launcher/lib/R$string;->title_find_game:I

    invoke-virtual {v3, v4}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 214
    return-void
.end method
