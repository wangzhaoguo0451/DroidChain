.class public final Lmt;
.super Lnj;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public a:Lmn;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {p1, p2}, Lmt;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lnj;-><init>(Landroid/content/Context;I)V

    .line 93
    new-instance v0, Lmn;

    invoke-virtual {p0}, Lmt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lmt;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lmn;-><init>(Landroid/content/Context;Lnj;Landroid/view/Window;)V

    iput-object v0, p0, Lmt;->a:Lmn;

    .line 94
    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 104
    const/high16 v0, 0x100

    if-lt p1, v0, :cond_0

    .line 109
    :goto_0
    return p1

    .line 107
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 109
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method static synthetic a(Lmt;)Lmn;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lmt;->a:Lmn;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const/high16 v12, 0x2

    const/4 v11, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v10, 0x8

    .line 239
    invoke-super {p0, p1}, Lnj;->onCreate(Landroid/os/Bundle;)V

    .line 240
    iget-object v5, p0, Lmt;->a:Lmn;

    iget-object v0, v5, Lmn;->b:Lnj;

    invoke-virtual {v0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->i()Z

    iget v0, v5, Lmn;->x:I

    iget-object v1, v5, Lmn;->b:Lnj;

    invoke-virtual {v1, v0}, Lnj;->setContentView(I)V

    iget-object v0, v5, Lmn;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v5, Lmn;->c:Landroid/view/Window;

    sget v4, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, v5, Lmn;->p:Landroid/widget/ScrollView;

    iget-object v1, v5, Lmn;->p:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v1, v5, Lmn;->c:Landroid/view/Window;

    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v5, Lmn;->t:Landroid/widget/TextView;

    iget-object v1, v5, Lmn;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, v5, Lmn;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v5, Lmn;->p:Landroid/widget/ScrollView;

    iget-object v4, v5, Lmn;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v1, v5, Lmn;->e:Landroid/widget/ListView;

    if-eqz v1, :cond_8

    iget-object v0, v5, Lmn;->p:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v5, Lmn;->p:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, v5, Lmn;->e:Landroid/widget/ListView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    iget-object v0, v5, Lmn;->c:Landroid/view/Window;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v5, Lmn;->g:Landroid/widget/Button;

    iget-object v0, v5, Lmn;->g:Landroid/widget/Button;

    iget-object v1, v5, Lmn;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v5, Lmn;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v5, Lmn;->g:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    :goto_1
    iget-object v0, v5, Lmn;->c:Landroid/view/Window;

    const v4, 0x102001a

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v5, Lmn;->j:Landroid/widget/Button;

    iget-object v0, v5, Lmn;->j:Landroid/widget/Button;

    iget-object v4, v5, Lmn;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v5, Lmn;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v5, Lmn;->j:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    iget-object v0, v5, Lmn;->c:Landroid/view/Window;

    const v4, 0x102001b

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v5, Lmn;->m:Landroid/widget/Button;

    iget-object v0, v5, Lmn;->m:Landroid/widget/Button;

    iget-object v4, v5, Lmn;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v5, Lmn;->n:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v5, Lmn;->m:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    iget-object v0, v5, Lmn;->a:Landroid/content/Context;

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v6, Landroid/support/v7/appcompat/R$attr;->alertDialogCenterButtons:I

    invoke-virtual {v0, v6, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v4, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_c

    move v0, v3

    :goto_4
    if-eqz v0, :cond_1

    if-ne v1, v3, :cond_d

    iget-object v0, v5, Lmn;->g:Landroid/widget/Button;

    invoke-static {v0}, Lmn;->a(Landroid/widget/Button;)V

    :cond_1
    :goto_5
    if-eqz v1, :cond_f

    move v4, v3

    :goto_6
    iget-object v0, v5, Lmn;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v5, Lmn;->a:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v8, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    invoke-static {v1, v6, v7, v8}, Lrd;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lrd;

    move-result-object v6

    iget-object v1, v5, Lmn;->u:Landroid/view/View;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v1, v11, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v7, v5, Lmn;->u:Landroid/view/View;

    invoke-virtual {v0, v7, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v5, Lmn;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    iget-object v0, v5, Lmn;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_2

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v5, Lmn;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, v5, Lmn;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, v5, Lmn;->f:Landroid/view/View;

    if-eqz v1, :cond_14

    iget-object v1, v5, Lmn;->f:Landroid/view/View;

    move-object v4, v1

    :goto_8
    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v4}, Lmn;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, v5, Lmn;->c:Landroid/view/Window;

    invoke-virtual {v1, v12, v12}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    if-eqz v2, :cond_15

    iget-object v1, v5, Lmn;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v5, Lmn;->e:Landroid/widget/ListView;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_6
    :goto_9
    iget-object v0, v5, Lmn;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    iget-object v1, v5, Lmn;->v:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v1, v5, Lmn;->v:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v5, Lmn;->w:I

    if-ltz v1, :cond_7

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_7
    iget-object v0, v6, Lrd;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    return-void

    .line 240
    :cond_8
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, v5, Lmn;->g:Landroid/widget/Button;

    iget-object v1, v5, Lmn;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v5, Lmn;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    goto/16 :goto_1

    :cond_a
    iget-object v0, v5, Lmn;->j:Landroid/widget/Button;

    iget-object v4, v5, Lmn;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v5, Lmn;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    :cond_b
    iget-object v0, v5, Lmn;->m:Landroid/widget/Button;

    iget-object v4, v5, Lmn;->n:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v5, Lmn;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x4

    goto/16 :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_4

    :cond_d
    const/4 v0, 0x2

    if-ne v1, v0, :cond_e

    iget-object v0, v5, Lmn;->j:Landroid/widget/Button;

    invoke-static {v0}, Lmn;->a(Landroid/widget/Button;)V

    goto/16 :goto_5

    :cond_e
    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    iget-object v0, v5, Lmn;->m:Landroid/widget/Button;

    invoke-static {v0}, Lmn;->a(Landroid/widget/Button;)V

    goto/16 :goto_5

    :cond_f
    move v4, v2

    goto/16 :goto_6

    :cond_10
    iget-object v1, v5, Lmn;->c:Landroid/view/Window;

    const v7, 0x1020006

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v5, Lmn;->r:Landroid/widget/ImageView;

    iget-object v1, v5, Lmn;->d:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v3

    :goto_a
    if-eqz v1, :cond_13

    iget-object v0, v5, Lmn;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, Lmn;->s:Landroid/widget/TextView;

    iget-object v0, v5, Lmn;->s:Landroid/widget/TextView;

    iget-object v1, v5, Lmn;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v5, Lmn;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v0, v5, Lmn;->r:Landroid/widget/ImageView;

    iget-object v1, v5, Lmn;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_11
    move v1, v2

    goto :goto_a

    :cond_12
    iget-object v0, v5, Lmn;->s:Landroid/widget/TextView;

    iget-object v1, v5, Lmn;->r:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v7, v5, Lmn;->r:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    iget-object v8, v5, Lmn;->r:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v8

    iget-object v9, v5, Lmn;->r:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v1, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v5, Lmn;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_13
    iget-object v1, v5, Lmn;->c:Landroid/view/Window;

    sget v7, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v5, Lmn;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    :cond_14
    const/4 v1, 0x0

    move-object v4, v1

    goto/16 :goto_8

    :cond_15
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 245
    iget-object v1, p0, Lmt;->a:Lmn;

    iget-object v2, v1, Lmn;->p:Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lmn;->p:Landroid/widget/ScrollView;

    invoke-virtual {v1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 248
    :goto_1
    return v0

    .line 245
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 248
    :cond_1
    invoke-super {p0, p1, p2}, Lnj;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 253
    iget-object v1, p0, Lmt;->a:Lmn;

    iget-object v2, v1, Lmn;->p:Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lmn;->p:Landroid/widget/ScrollView;

    invoke-virtual {v1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 256
    :goto_1
    return v0

    .line 253
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 256
    :cond_1
    invoke-super {p0, p1, p2}, Lnj;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-super {p0, p1}, Lnj;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lmt;->a:Lmn;

    invoke-virtual {v0, p1}, Lmn;->a(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
