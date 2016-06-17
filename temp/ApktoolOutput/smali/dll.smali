.class public final Ldll;
.super Lhic;
.source "DetailCommentPresenter.java"


# static fields
.field private static final a:Lhma;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lhma;

    invoke-direct {v0}, Lhma;-><init>()V

    sput-object v0, Ldll;->a:Lhma;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method private static a(I)F
    .locals 3
    .parameter

    .prologue
    .line 142
    int-to-float v0, p0

    int-to-float v1, p0

    const/high16 v2, 0x42c8

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private static a(F)I
    .locals 1
    .parameter

    .prologue
    .line 146
    const/high16 v0, 0x447a

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 147
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;Leri;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x3f80

    const v5, 0x7f0c031d

    .line 152
    int-to-float v0, p2

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    add-int v1, p2, p3

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 153
    const v0, 0x7f0c0078

    invoke-virtual {p1, v0}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v0, 0x7f0c031e

    invoke-virtual {p1, v0}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0118

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v0, 0x7f0c0320

    invoke-virtual {p1, v0}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0116

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    if-lt p2, p3, :cond_0

    .line 164
    invoke-static {p2}, Ldll;->a(I)F

    move-result v2

    .line 165
    int-to-float v0, p3

    mul-float/2addr v0, v2

    mul-float/2addr v0, v4

    int-to-float v1, p2

    div-float v1, v0, v1

    .line 166
    invoke-virtual {p1, v5}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :goto_0
    invoke-virtual {p1, v5}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v2}, Ldll;->a(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 176
    const v0, 0x7f0c031f

    invoke-virtual {p1, v0}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v1}, Ldll;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 178
    return-void

    .line 169
    :cond_0
    invoke-static {p3}, Ldll;->a(I)F

    move-result v1

    .line 170
    int-to-float v0, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v4

    int-to-float v2, p3

    div-float v2, v0, v2

    .line 171
    invoke-virtual {p1, v5}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/wandoujia/api/proto/AppDetail;Landroid/content/Context;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-static {p0}, Ldwk;->d(Lcom/wandoujia/api/proto/AppDetail;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    iget-object v5, p0, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    move-object v0, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/wandoujia/p4/app/detail/activity/AppCommentsActivity;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 13
    .parameter

    .prologue
    const v12, 0x7f0c0040

    const/4 v11, 0x3

    const v10, 0x7f0c0311

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 38
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v5, v0, Lcom/wandoujia/api/proto/Detail;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    .line 39
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v6, v0, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    .line 44
    iget-object v0, v5, Lcom/wandoujia/api/proto/CommentSummary;->enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

    .line 45
    if-nez v0, :cond_1

    move v0, v2

    move v1, v2

    .line 52
    :goto_0
    add-int v4, v1, v0

    .line 53
    const/16 v7, 0xa

    if-gt v4, v7, :cond_3

    .line 54
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0321

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v1

    const v4, 0x7f0c031a

    invoke-virtual {v1, v4}, Leri;->a(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v1, v5, Lcom/wandoujia/api/proto/CommentSummary;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_2

    .line 58
    const v1, 0x7f0c0322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0462

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    :goto_1
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0314

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    new-instance v1, Ldlm;

    invoke-direct {v1, v6}, Ldlm;-><init>(Lcom/wandoujia/api/proto/AppDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0315

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    new-instance v1, Ldln;

    invoke-direct {v1, v6}, Ldln;-><init>(Lcom/wandoujia/api/proto/AppDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    new-instance v1, Ldlo;

    invoke-direct {v1, v6}, Ldlo;-><init>(Lcom/wandoujia/api/proto/AppDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, v5, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v10}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 94
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0312

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_0
    :goto_2
    return-void

    .line 49
    :cond_1
    iget-object v1, v0, Lcom/wandoujia/api/proto/EnjoySummary;->likeCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 50
    iget-object v0, v0, Lcom/wandoujia/api/proto/EnjoySummary;->dislikeCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 60
    :cond_2
    const v1, 0x7f0c0322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e017b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 63
    :cond_3
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v4

    const v7, 0x7f0c0321

    invoke-virtual {v4, v7}, Leri;->a(I)Leri;

    move-result-object v4

    iget-object v4, v4, Leri;->a:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v4

    const v7, 0x7f0c031a

    invoke-virtual {v4, v7}, Leri;->a(I)Leri;

    move-result-object v4

    iget-object v4, v4, Leri;->a:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v7

    invoke-static {v4, v7, v1, v0}, Ldll;->a(Landroid/content/Context;Leri;II)V

    goto/16 :goto_1

    .line 97
    :cond_4
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v10}, Leri;->a(I)Leri;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v4, v1, Leri;->a:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v0, v1, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    :cond_5
    iget-object v1, v5, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    if-eq v0, v1, :cond_0

    move v4, v2

    .line 100
    :goto_3
    if-ge v4, v11, :cond_8

    iget-object v0, v5, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 101
    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v0, v5, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/wandoujia/api/proto/CommentJson;

    const v0, 0x7f03010d

    invoke-static {v7, v0}, Lj;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v7

    sget-object v8, Ldll;->a:Lhma;

    const v0, 0x7f0c0316

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v9, v1, Lcom/wandoujia/api/proto/CommentJson;->avatar:Ljava/lang/String;

    invoke-virtual {v8, v0, v9}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    const v0, 0x7f0c0317

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/wandoujia/api/proto/CommentJson;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c0318

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/wandoujia/api/proto/CommentJson;->date:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c0015

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/wandoujia/api/proto/CommentJson;->content:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/wandoujia/api/proto/CommentJson;->enjoy:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const v0, 0x7f0c0319

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :goto_4
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v10}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    new-instance v0, Ldlp;

    invoke-direct {v0, v6}, Ldlp;-><init>(Lcom/wandoujia/api/proto/AppDetail;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_3

    .line 101
    :cond_6
    const v0, 0x7f0c0319

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, v1, Lcom/wandoujia/api/proto/CommentJson;->enjoy:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f0202d9

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_7
    const v1, 0x7f020271

    goto :goto_5

    .line 111
    :cond_8
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0312

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v1, v0, Leri;->a:Landroid/view/View;

    iget-object v0, v5, Lcom/wandoujia/api/proto/CommentSummary;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v11, :cond_9

    move v0, v2

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-virtual {p0}, Ldll;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v10}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    iget-object v1, v5, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    invoke-virtual {v0, v12, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    move v0, v3

    .line 111
    goto :goto_6
.end method
