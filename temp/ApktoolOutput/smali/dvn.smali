.class public final Ldvn;
.super Lup;
.source "TopicRecyclerScrollListener.java"


# instance fields
.field final a:Landroid/widget/TextView;

.field b:I

.field private final c:Landroid/view/View;

.field private final d:Landroid/support/v7/widget/Toolbar;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;

.field private final g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;Landroid/support/v7/widget/Toolbar;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lup;-><init>()V

    .line 42
    iput v2, p0, Ldvn;->m:I

    .line 50
    iput-object p3, p0, Ldvn;->c:Landroid/view/View;

    .line 51
    iput-object p2, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    .line 52
    iput-object p4, p0, Ldvn;->e:Landroid/widget/TextView;

    .line 53
    iput-object p5, p0, Ldvn;->f:Landroid/view/View;

    .line 54
    iput-object p1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    .line 55
    const-string v0, "mTitleTextView"

    invoke-static {p2, v0}, Lcom/wandoujia/base/utils/ReflectionUtil;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldvn;->a:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ldvn;->n:I

    .line 58
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ldvn;->o:I

    .line 59
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-static {v0}, Lj;->b(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ldvn;->p:I

    .line 60
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ldvn;->a(ZLjava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0a017f

    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 92
    if-nez p2, :cond_2

    .line 93
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Luo;

    move-result-object v0

    invoke-virtual {v0, v4}, Luo;->b(I)Landroid/view/View;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Luo;

    move-result-object v1

    invoke-virtual {v1}, Luo;->l()I

    move-result v1

    if-lez v1, :cond_0

    .line 95
    iget-object v1, p0, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Ldvn;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v1, v1, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v1, v1, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Ldvn;->f:Landroid/view/View;

    iget-object v2, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    iget-object v1, p0, Ldvn;->c:Landroid/view/View;

    iget-object v2, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    iget-object v1, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 103
    :cond_0
    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v1, v0

    .line 105
    iget-object v0, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->getHeight()I

    move-result v0

    iget v2, p0, Ldvn;->n:I

    sub-int/2addr v0, v2

    .line 106
    const/16 v2, 0x13

    invoke-static {v2}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget v2, p0, Ldvn;->o:I

    sub-int/2addr v0, v2

    .line 109
    :cond_1
    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 110
    div-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_3

    .line 111
    sub-int/2addr v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 118
    :cond_2
    :goto_0
    return-void

    .line 113
    :cond_3
    neg-int v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x1

    const/high16 v7, 0x437f

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Luo;

    move-result-object v0

    invoke-virtual {v0, v5}, Luo;->b(I)Landroid/view/View;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Ldvn;->m:I

    .line 142
    iget v0, p0, Ldvn;->m:I

    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v2, v2, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iget-object v2, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0236

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v2, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v2, v2, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Ldvn;->p:I

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v4, v4, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    aget v4, v2, v5

    sub-int/2addr v1, v4

    iput v1, p0, Ldvn;->k:I

    aget v1, v3, v8

    add-int/2addr v0, v1

    aget v1, v2, v8

    sub-int/2addr v0, v1

    iput v0, p0, Ldvn;->j:I

    .line 143
    iget v0, p0, Ldvn;->j:I

    if-lez v0, :cond_0

    iget v0, p0, Ldvn;->i:I

    if-lez v0, :cond_0

    .line 144
    iget v0, p0, Ldvn;->m:I

    iget v1, p0, Ldvn;->j:I

    if-lt v0, v1, :cond_3

    .line 145
    iget-object v0, p0, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Ldvn;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 200
    :cond_2
    :goto_1
    iget-object v0, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 201
    iget-object v1, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 202
    iget v2, p0, Ldvn;->m:I

    iget v3, p0, Ldvn;->i:I

    if-gt v2, v3, :cond_9

    .line 203
    iget-boolean v2, p0, Ldvn;->h:Z

    if-eqz v2, :cond_8

    .line 204
    iget-object v2, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 205
    iget-object v2, p0, Ldvn;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 206
    iget v2, p0, Ldvn;->m:I

    iget v3, p0, Ldvn;->i:I

    iget v4, p0, Ldvn;->n:I

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_7

    .line 207
    iget v1, p0, Ldvn;->i:I

    iget v2, p0, Ldvn;->m:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ldvn;->n:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v9, v1

    .line 208
    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 210
    iget-object v1, p0, Ldvn;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 150
    :cond_3
    iget-boolean v0, p0, Ldvn;->h:Z

    if-eqz v0, :cond_6

    .line 151
    iget v0, p0, Ldvn;->m:I

    iget v1, p0, Ldvn;->i:I

    if-lt v0, v1, :cond_5

    .line 152
    iget-object v0, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Ldvn;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget v0, p0, Ldvn;->j:I

    iget v1, p0, Ldvn;->i:I

    sub-int/2addr v0, v1

    .line 156
    iget v1, p0, Ldvn;->m:I

    iget v2, p0, Ldvn;->i:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    sub-float v0, v9, v0

    .line 157
    iget-object v1, p0, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Ldvn;->l:F

    iget-object v3, p0, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 159
    iget-object v2, p0, Ldvn;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 162
    iget-object v2, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v2, v2, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 163
    const/16 v2, 0x13

    invoke-static {v2}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 164
    aget v2, v1, v8

    iget v3, p0, Ldvn;->o:I

    sub-int/2addr v2, v3

    aput v2, v1, v8

    .line 166
    :cond_4
    iget v2, p0, Ldvn;->b:I

    iget v3, p0, Ldvn;->k:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 167
    iget-object v3, p0, Ldvn;->e:Landroid/widget/TextView;

    aget v1, v1, v8

    invoke-virtual {v3, v2, v1, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 168
    iget-object v1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v1, v1, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 170
    iget v0, p0, Ldvn;->j:I

    iget v1, p0, Ldvn;->i:I

    sub-int/2addr v0, v1

    .line 171
    if-lez v0, :cond_2

    .line 172
    iget v1, p0, Ldvn;->m:I

    iget v2, p0, Ldvn;->i:I

    sub-int/2addr v1, v2

    .line 173
    if-ge v1, v0, :cond_2

    .line 174
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 175
    const/16 v1, 0xff

    mul-float v2, v0, v7

    float-to-int v2, v2

    mul-float v3, v0, v7

    float-to-int v3, v3

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 177
    iget-object v1, p0, Ldvn;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 181
    :cond_5
    iget-object v0, p0, Ldvn;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v0, v0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->b:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 188
    :cond_6
    iget v0, p0, Ldvn;->j:I

    iget v1, p0, Ldvn;->m:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Ldvn;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 189
    iget-object v1, p0, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Ldvn;->l:F

    iget-object v3, p0, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 191
    iget-object v2, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v2, v2, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 192
    iget v1, p0, Ldvn;->b:I

    iget v2, p0, Ldvn;->k:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 193
    iget-object v2, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v2, v2, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    iget-object v1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v1, v1, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v1, v1, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v1, v1, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 197
    iget-object v0, p0, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 212
    :cond_7
    iget-object v0, p0, Ldvn;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 215
    :cond_8
    iget v2, p0, Ldvn;->m:I

    iget v3, p0, Ldvn;->j:I

    if-lt v2, v3, :cond_b

    .line 216
    iget v1, p0, Ldvn;->i:I

    iget v2, p0, Ldvn;->j:I

    sub-int/2addr v1, v2

    .line 217
    if-lez v1, :cond_a

    .line 218
    iget v2, p0, Ldvn;->m:I

    iget v3, p0, Ldvn;->j:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 219
    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 236
    :cond_9
    iget-object v1, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 237
    iget-object v1, p0, Ldvn;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    iget-object v1, p0, Ldvn;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 225
    :cond_a
    iget-object v1, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 226
    iget-object v1, p0, Ldvn;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 227
    iget-object v1, p0, Ldvn;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 230
    :cond_b
    iget-object v0, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 231
    iget-object v0, p0, Ldvn;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 232
    iget-object v0, p0, Ldvn;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0b0236

    const/4 v3, 0x0

    .line 64
    iput-boolean p1, p0, Ldvn;->h:Z

    .line 65
    iget-object v0, p0, Ldvn;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 67
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v1, v1, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 68
    iget-object v1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 69
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 70
    iget v1, p0, Ldvn;->p:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 71
    iget-object v1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    iget-object v1, v1, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 74
    iget-object v1, p0, Ldvn;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 75
    iget-object v1, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0245

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    iput v0, p0, Ldvn;->i:I

    .line 78
    iget-object v0, p0, Ldvn;->a:Landroid/widget/TextView;

    new-instance v1, Ldvo;

    invoke-direct {v1, p0}, Ldvo;-><init>(Ldvn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 87
    iget-object v0, p0, Ldvn;->g:Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Ldvn;->l:F

    .line 88
    return-void
.end method
