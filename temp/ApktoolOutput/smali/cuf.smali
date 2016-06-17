.class public final Lcuf;
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
    .line 250
    iput-object p1, p0, Lcuf;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcuf;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->f(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcuh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcuf;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->f(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcuh;

    move-result-object v0

    invoke-interface {v0}, Lcuh;->a()V

    .line 256
    :cond_0
    return-void
.end method
