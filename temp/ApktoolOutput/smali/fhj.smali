.class public final Lfhj;
.super Ljava/lang/Object;
.source "CommunityPostContentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lfhj;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lfhj;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 223
    if-lt p3, v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lfhj;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfhj;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->b(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    :cond_1
    iget-object v0, p0, Lfhj;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v0, p3}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;I)I

    .line 230
    const/4 v0, 0x1

    .line 236
    :goto_1
    iget-object v1, p0, Lfhj;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a(II)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lfhj;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 233
    iget-object v1, p0, Lfhj;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;I)I

    goto :goto_1
.end method
