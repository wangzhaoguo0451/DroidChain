.class Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field private mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

.field final synthetic this$0:Lcom/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/AnimatorSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p2, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 713
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    .line 716
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-boolean v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->access$000(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 722
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 723
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v0, v3}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V

    .line 722
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 728
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 732
    invoke-virtual {p1, p0}, Lcom/nineoldandroids/animation/Animator;->removeListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 733
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->access$000(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 734
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->access$100(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 735
    iput-boolean v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    .line 736
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-boolean v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->access$200(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v4

    .line 741
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    .line 742
    :goto_0
    if-ge v2, v5, :cond_3

    .line 743
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-boolean v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    if-nez v0, :cond_0

    move v0, v3

    .line 748
    :goto_1
    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 754
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 755
    :goto_2
    if-ge v2, v4, :cond_1

    .line 756
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v5, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v1, v5}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V

    .line 755
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 742
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    #setter for: Lcom/nineoldandroids/animation/AnimatorSet;->mStarted:Z
    invoke-static {v0, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->access$302(Lcom/nineoldandroids/animation/AnimatorSet;Z)Z

    .line 762
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    return-void
.end method
