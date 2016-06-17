.class public final Lcug;
.super Ljava/lang/Object;
.source "GameStoryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/game_launcher/views/GameStoryView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/game_launcher/views/GameStoryView;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcug;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 261
    const-string v0, "game_review"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REFRESH:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "refresh_game"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcug;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->f(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcuh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcug;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->f(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcuh;

    move-result-object v0

    invoke-interface {v0}, Lcuh;->b()V

    .line 266
    :cond_0
    return-void
.end method
