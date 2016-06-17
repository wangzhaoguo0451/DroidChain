.class public final Lfid;
.super Ljava/lang/Object;
.source "CommunityTopicListTabFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private a:I

.field private synthetic b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lfid;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lfid;->a:I

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lfid;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->b(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 169
    iget v1, p0, Lfid;->a:I

    if-ne v1, v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 172
    :cond_0
    iput v0, p0, Lfid;->a:I

    .line 173
    iget-object v0, p0, Lfid;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    move-result-object v0

    iget v1, p0, Lfid;->a:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setMaxOffset(I)V

    .line 174
    iget-object v0, p0, Lfid;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 175
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lfid;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 178
    :cond_1
    iget-object v1, p0, Lfid;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setMinOffset(I)V

    .line 179
    iget-object v0, p0, Lfid;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lfid;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getMaxOffset()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->scrollTo(II)V

    goto :goto_0
.end method
