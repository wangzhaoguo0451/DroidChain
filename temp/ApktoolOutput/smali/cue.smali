.class public final Lcue;
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
    .line 230
    iput-object p1, p0, Lcue;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcue;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->e(Lcom/wandoujia/game_launcher/views/GameStoryView;)V

    .line 234
    const-string v0, "game_review"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "view_article_more"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 236
    return-void
.end method
