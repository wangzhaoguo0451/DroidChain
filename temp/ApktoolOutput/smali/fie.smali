.class public final Lfie;
.super Ljava/lang/Object;
.source "CommunityTopicListTabFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lfie;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lfie;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->l(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 311
    return-void
.end method
