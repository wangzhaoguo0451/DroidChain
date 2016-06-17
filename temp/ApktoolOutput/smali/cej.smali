.class public final Lcej;
.super Ljava/lang/Object;


# static fields
.field private static final e:I

.field private static final f:I

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/widget/PopupWindow;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/ScrollView;

.field public d:I

.field private g:Landroid/content/Context;

.field private h:Landroid/view/View$OnClickListener;

.field private j:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xa

    sget v0, Lccd;->m:I

    sput v0, Lcej;->e:I

    sget v0, Lccd;->g:I

    sput v0, Lcej;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcej;->i:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcej;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 7

    const/4 v6, -0x2

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcej;->g:Landroid/content/Context;

    iput-object v0, p0, Lcej;->h:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcej;->a:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcej;->b:Landroid/view/View;

    iput-object v0, p0, Lcej;->c:Landroid/widget/ScrollView;

    iput v5, p0, Lcej;->d:I

    new-instance v0, Lcek;

    invoke-direct {v0, p0}, Lcek;-><init>(Lcej;)V

    iput-object v0, p0, Lcej;->j:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, p0, Lcej;->g:Landroid/content/Context;

    iput-object p2, p0, Lcej;->h:Landroid/view/View$OnClickListener;

    check-cast p3, Landroid/view/ViewParent;

    move-object v1, p3

    :goto_0
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcej;->c:Landroid/widget/ScrollView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mSV : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcej;->c:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " mSV H:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcej;->c:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcej;->b:Landroid/view/View;

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, -0x5000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v2, -0xcacacc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcej;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v5, v6, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcej;->a:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcej;->a:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcej;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcej;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcej;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcej;->j:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void

    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static a()I
    .locals 2

    sget v0, Lcej;->e:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Lcej;->f:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sget v1, Lcej;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method private a(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcej;->f:I

    sget v4, Lcej;->f:I

    sget v5, Lcej;->f:I

    sget v6, Lcej;->f:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v3, v0}, Lcej;->a(Landroid/widget/LinearLayout;I)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcej;->a(Landroid/view/View;)V

    return-object v2
.end method

.method static synthetic a(Lcej;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcej;->c:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private static a(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0xa

    sget-object v0, Lcej;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v0, 0xc

    if-ge v2, v0, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x9

    if-ne v2, v1, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    if-ne v2, v1, :cond_1

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    sget-object v1, Lcej;->i:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcej;->i:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcej;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcej;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;I)V
    .locals 10

    const/16 v9, 0xb

    const/16 v8, 0x9

    const/4 v1, 0x0

    const/4 v7, -0x1

    sget v0, Lccd;->B:I

    div-int/lit8 v2, v0, 0x3

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcej;->g:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcej;->e:I

    invoke-direct {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_2

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcej;->g:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41f0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    mul-int/lit8 v5, p2, 0x3

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcej;->g:Landroid/content/Context;

    invoke-static {v6}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v6

    if-ne v5, v8, :cond_0

    const/16 v5, 0x7db

    invoke-virtual {v6, v5, v7, v7}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const v5, -0xc2814f

    invoke-static {v7, v5}, Lccw;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcej;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    sget v6, Lcej;->e:I

    invoke-direct {v5, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    packed-switch v0, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v5, v9, :cond_1

    const/16 v5, 0x7dc

    invoke-virtual {v6, v5, v7, v7}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x7da

    invoke-virtual {v6, v5, v7, v7}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {v5, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :pswitch_1
    const/16 v6, 0xd

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v5, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcej;)I
    .locals 1

    iget v0, p0, Lcej;->d:I

    return v0
.end method
