.class public final Leco;
.super Ljava/lang/Object;
.source "GameStoryCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Leco;->a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 165
    const-string v0, "game_review"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REFRESH:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "refresh_game"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Leco;->a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->b(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lecr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Leco;->a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->b(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lecr;

    move-result-object v0

    invoke-interface {v0}, Lecr;->a()V

    .line 170
    :cond_0
    return-void
.end method
