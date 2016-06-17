.class public Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;
.super Landroid/view/View;
.source "CommunityBallotProgressView.java"


# instance fields
.field public a:I

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    .line 30
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->e:I

    .line 31
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->f:I

    .line 37
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    .line 38
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->k:I

    .line 40
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    .line 41
    const v0, -0xc455dc

    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a:I

    .line 45
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    .line 30
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->e:I

    .line 31
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->f:I

    .line 37
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    .line 38
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->k:I

    .line 40
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    .line 41
    const v0, -0xc455dc

    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a:I

    .line 50
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    .line 30
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->e:I

    .line 31
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->f:I

    .line 37
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    .line 38
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->k:I

    .line 40
    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    .line 41
    const v0, -0xc455dc

    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a:I

    .line 55
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->c:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b022c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->e:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->f:I

    .line 69
    const v0, 0x7f0e01c0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->g:Ljava/lang/String;

    .line 70
    const v0, 0x7f0e01bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->h:Ljava/lang/String;

    .line 71
    const v0, 0x7f0e01be

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->i:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private a(Landroid/graphics/Canvas;ILjava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    int-to-float v0, p2

    iget v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const v6, -0x81807f

    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    int-to-float v2, v0

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    int-to-float v3, v0

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    iget v4, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    int-to-float v2, v0

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    int-to-float v3, v0

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    iget v4, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 88
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->f:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    div-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->i:Ljava/lang/String;

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a(Landroid/graphics/Canvas;ILjava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->e:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->e:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->h:Ljava/lang/String;

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a(Landroid/graphics/Canvas;ILjava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->f:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->d:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->f:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->g:Ljava/lang/String;

    const v2, -0x7781807f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a(Landroid/graphics/Canvas;ILjava/lang/String;I)V

    .line 91
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 92
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 97
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->j:I

    .line 98
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->k:I

    .line 100
    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->k:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->l:I

    .line 101
    return-void
.end method
