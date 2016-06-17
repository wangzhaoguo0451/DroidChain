.class public Lcom/wandoujia/p4/views/ExpandablePanel;
.super Landroid/widget/RelativeLayout;
.source "ExpandablePanel.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

.field public c:Z

.field public d:Z

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Landroid/view/animation/AnimationSet;

.field private i:Landroid/view/animation/AnimationSet;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:J

.field private o:I

.field private p:I

.field private q:Lgqb;

.field private final r:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/p4/views/ExpandablePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v4, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->c:Z

    .line 38
    iput-boolean v2, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->k:Z

    .line 39
    iput-boolean v4, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->l:Z

    .line 40
    iput-boolean v4, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->d:Z

    .line 43
    iput v4, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    .line 45
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->n:J

    .line 52
    new-instance v0, Lgqa;

    invoke-direct {v0, p0}, Lgqa;-><init>(Lcom/wandoujia/p4/views/ExpandablePanel;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->r:Landroid/view/animation/Animation$AnimationListener;

    .line 76
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->ExpandablePanel:[I

    invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 93
    if-nez v2, :cond_1

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 100
    const/4 v4, 0x5

    const/16 v5, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    int-to-long v4, v4

    .line 103
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The animationDuration attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    iput v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->e:I

    .line 110
    iput v2, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->f:I

    .line 111
    iput v3, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->g:I

    .line 112
    iput-wide v4, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->n:J

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/views/ExpandablePanel;)Lgqb;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/views/ExpandablePanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->c:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/views/ExpandablePanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->d:Z

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/views/ExpandablePanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->k:Z

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/views/ExpandablePanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->l:Z

    return v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/views/ExpandablePanel;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getDownAnimationSet()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const v6, 0x7f040018

    .line 161
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->o:I

    iget v2, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 162
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->i:Landroid/view/animation/AnimationSet;

    .line 163
    new-instance v0, Leux;

    iget-object v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    iget-wide v2, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->n:J

    iget v4, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    iget-object v5, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Leux;-><init>(Landroid/view/View;JII)V

    .line 166
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 167
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ExpandablePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 168
    iget-object v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->i:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 169
    iget v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 171
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 172
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ExpandablePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 173
    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 174
    iget-object v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->i:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->i:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->r:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 177
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->i:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getUpAnimationSet()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const v6, 0x7f040018

    .line 181
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->o:I

    iget v2, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 182
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->h:Landroid/view/animation/AnimationSet;

    .line 183
    new-instance v0, Leux;

    iget-object v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    iget-wide v2, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->n:J

    iget-object v4, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    invoke-direct/range {v0 .. v5}, Leux;-><init>(Landroid/view/View;JII)V

    .line 186
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 187
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ExpandablePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 188
    iget-object v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->h:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 189
    iget v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 191
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 192
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ExpandablePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 193
    iget-object v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->h:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->h:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->r:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->h:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 121
    iget v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->e:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/ExpandablePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->j:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->j:Landroid/view/View;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->f:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/ExpandablePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iget v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->g:I

    if-eqz v0, :cond_2

    .line 135
    iget v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->g:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/ExpandablePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->b:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->j:Landroid/view/View;

    new-instance v1, Lgqc;

    invoke-direct {v1, p0, v2}, Lgqc;-><init>(Lcom/wandoujia/p4/views/ExpandablePanel;B)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Lgqc;

    invoke-direct {v0, p0, v2}, Lgqc;-><init>(Lcom/wandoujia/p4/views/ExpandablePanel;B)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/ExpandablePanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 244
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 245
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ExpandablePanel;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ExpandablePanel;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 248
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 249
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->o:I

    .line 250
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->p:I

    .line 252
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->k:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->d:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->l:Z

    if-eqz v0, :cond_6

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->o:I

    iget v2, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 254
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 255
    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    if-gt v0, v1, :cond_3

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->l:Z

    .line 257
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->b:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->b:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->setVisibility(I)V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    invoke-interface {v0}, Lgqb;->a()V

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    iget v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->p:I

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 279
    :goto_0
    return-void

    .line 266
    :cond_3
    iput-boolean v4, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->l:Z

    .line 267
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->b:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->b:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->setVisibility(I)V

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    if-eqz v0, :cond_5

    .line 271
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    invoke-interface {v0}, Lgqb;->b()V

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    .line 277
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setCollapseHeight(I)V
    .locals 2
    .parameter

    .prologue
    .line 151
    iput p1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    .line 152
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->c:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    iget-boolean v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->c:Z

    invoke-interface {v0, v1}, Lgqb;->b(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public setExpandStateListener(Lgqb;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    .line 331
    return-void
.end method

.method public setExpanded(Z)V
    .locals 3
    .parameter

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->k:Z

    if-nez v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iput-boolean p1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->c:Z

    .line 308
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    iget-boolean v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->c:Z

    invoke-interface {v0, v1}, Lgqb;->a(Z)V

    .line 311
    :cond_2
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->c:Z

    if-eqz v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->o:I

    iget v2, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 313
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 314
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->b:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->b:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->a()V

    .line 323
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->q:Lgqb;

    iget-boolean v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->c:Z

    invoke-interface {v0, v1}, Lgqb;->b(Z)V

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 319
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->b:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExpandablePanel;->b:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->b()V

    goto :goto_1
.end method
