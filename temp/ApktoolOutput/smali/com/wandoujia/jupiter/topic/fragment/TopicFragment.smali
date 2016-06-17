.class public Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "TopicFragment.java"


# instance fields
.field private d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

.field private e:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ldvn;

.field private w:Ldvj;

.field private x:Landroid/view/ViewGroup;

.field private y:Lerf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->s:Z

    .line 310
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;-><init>()V

    .line 65
    invoke-static {p0, v1, v1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;

    move-result-object v1

    .line 66
    const-string v2, "alias_argument"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "type_argument"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 74
    new-instance v0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;-><init>()V

    .line 75
    invoke-static {p0, v1, v1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;

    move-result-object v1

    .line 76
    const-string v2, "alias_argument"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "type_argument"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0b0245

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 43
    invoke-static {p1}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v1, v1, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :goto_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->r:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0207

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0247

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lj;->b(Landroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    float-to-int v5, v1

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v6, v6, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->c:Landroid/view/View;

    invoke-virtual {v6, v4, v5}, Landroid/view/View;->measure(II)V

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v3, v3, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v3, v3, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-static {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;Lcom/wandoujia/ripple_framework/model/Model;)Landroid/view/ViewGroup;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->y:Lerf;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f03017d

    invoke-static {v0, v1}, Ld;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->x:Landroid/view/ViewGroup;

    new-instance v0, Lerf;

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->x:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v1, Ldtw;

    invoke-direct {v1}, Ldtw;-><init>()V

    const v2, 0x7f0c0387

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->y:Lerf;

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->y:Lerf;

    invoke-virtual {v0, p1}, Lerf;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->x:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)Lhaz;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->p:Lhaz;

    return-object v0
.end method

.method private static b(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)Ldvn;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->v:Ldvn;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)Lhaz;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->p:Lhaz;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)Lhaz;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->p:Lhaz;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v1, Ldcb;

    const-string v0, "FOLLOW"

    iget-object v2, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->u:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://apis.wandoujia.com/five/v1/follow/topics/%s"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->t:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldcb;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->n:Leqw;

    .line 244
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->n:Leqw;

    return-object v0

    .line 239
    :cond_0
    const-string v0, "http://apis.wandoujia.com/apps/v1/topics/%s/list?format=proto"

    goto :goto_0
.end method

.method protected final a()Lum;
    .locals 3

    .prologue
    .line 248
    new-instance v0, Ldcl;

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->c:Lhaw;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldcl;-><init>(Lerv;Z)V

    return-object v0
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0a0163

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "alias_argument"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->t:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type_argument"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->u:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :try_start_0
    const-string v0, "APPS"

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    new-instance v0, Ldvj;

    const-string v1, "http://apis.wandoujia.com/games/v1/topics/%s?format=proto"

    const-string v2, "http://apis.wandoujia.com/apps/v1/recommended/topics?currentAlias=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->t:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldvj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->w:Ldvj;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->w:Ldvj;

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 116
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->toolbarDeco:Landroid/view/View;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->toolbarMargin:Landroid/view/View;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 123
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 126
    const v0, 0x7f0c0016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 127
    const v0, 0x7f0c0385

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->q:Landroid/view/View;

    .line 128
    const v0, 0x7f0c0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->r:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    invoke-virtual {v0, v6}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEnabled(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f03017b

    invoke-static {v0, v1}, Ld;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    new-instance v6, Ldvp;

    invoke-direct {v6, p0}, Ldvp;-><init>(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->w:Ldvj;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v1, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-virtual {v6, v0}, Lert;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->p:Lhaz;

    invoke-virtual {v0, v6}, Lhaz;->a(Lert;)V

    new-instance v0, Ldvn;

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v2, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->toolbarMargin:Landroid/view/View;

    iget-object v4, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->r:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->q:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Ldvn;-><init>(Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;Landroid/support/v7/widget/Toolbar;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->v:Ldvn;

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->v:Ldvn;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lup;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->w:Ldvj;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ldvs;

    invoke-direct {v2, p0, v6}, Ldvs;-><init>(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;Lert;)V

    iget-object v3, v0, Ldvj;->c:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Ldvj;->a(Landroid/os/Bundle;Ljava/lang/String;Ldvk;)Ldvv;

    move-result-object v1

    iput-object v1, v0, Ldvj;->a:Ldvv;

    iget-object v0, v0, Ldvj;->a:Ldvv;

    invoke-virtual {v0}, Ldvv;->j()V

    .line 133
    :cond_2
    return-void

    .line 94
    :cond_3
    :try_start_1
    const-string v0, "GAMES"

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    new-instance v0, Ldvj;

    const-string v1, "http://apis.wandoujia.com/games/v1/topics/%s?format=proto"

    const-string v2, "http://apis.wandoujia.com/games/v1/recommended/topics?currentAlias=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->t:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldvj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->w:Ldvj;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 98
    :cond_4
    const-string v0, "FOLLOW"

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ldvj;

    const-string v1, "http://apis.wandoujia.com/five/v1/follow/topics/%s/summary"

    const-string v2, "http://apis.wandoujia.com/five/v1/follow/topics/%s/recommended"

    invoke-direct {v0, v1, v2}, Ldvj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->w:Ldvj;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;",
            "Leqz",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    .line 226
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->s:Z

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->s:Z

    .line 229
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->w:Ldvj;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->w:Ldvj;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ldvq;

    invoke-direct {v2, p0}, Ldvq;-><init>(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)V

    iget-object v3, v0, Ldvj;->d:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Ldvj;->a(Landroid/os/Bundle;Ljava/lang/String;Ldvk;)Ldvv;

    move-result-object v1

    iput-object v1, v0, Ldvj;->b:Ldvv;

    iget-object v0, v0, Ldvj;->b:Ldvv;

    invoke-virtual {v0}, Ldvv;->j()V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 253
    const v0, 0x7f03017c

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onDestroyView()V

    .line 264
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->w:Ldvj;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->w:Ldvj;

    iget-object v1, v0, Ldvj;->a:Ldvv;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldvj;->a:Ldvv;

    iput-boolean v2, v1, Lcom/android/volley/Request;->h:Z

    :cond_0
    iget-object v1, v0, Ldvj;->b:Ldvv;

    if-eqz v1, :cond_1

    iget-object v0, v0, Ldvj;->b:Ldvv;

    iput-boolean v2, v0, Lcom/android/volley/Request;->h:Z

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->y:Lerf;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->y:Lerf;

    invoke-virtual {v0}, Lerf;->a()V

    .line 270
    :cond_2
    return-void
.end method
