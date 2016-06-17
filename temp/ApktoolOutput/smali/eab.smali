.class public final Leab;
.super Ljava/lang/Object;
.source "GameSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Leab;->a:Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Leab;->a:Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    iget-object v1, p0, Leab;->a:Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ld;->s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string v2, "wdj://games/explore"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    const-string v2, "launch_from"

    const-string v3, "game_launcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v2, "launch_keyword"

    const-string v3, "game_launcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-static {v0, v1}, Ld;->c(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    const-string v0, "game_search"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "more_game"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 67
    :cond_1
    :goto_1
    return-void

    .line 51
    :cond_2
    :try_start_1
    const-string v2, "wdj://explore/game"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    invoke-static {v0, v1}, Ld;->c(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 62
    :cond_3
    invoke-static {}, Ld;->v()V

    .line 63
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->toast_download_wdj:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
