.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v1}, Lcom/google/android/gms/common/SignInButton;->a(II)V

    return-void
.end method

.method private a(II)V
    .locals 13

    const/4 v12, 0x2

    const/high16 v11, 0x4240

    const/high16 v10, 0x3f00

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Unknown button size %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lg;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p2, :cond_2

    if-ge p2, v12, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Unknown color scheme %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lg;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/SignInButton;->removeView(Landroid/view/View;)V

    :cond_0
    :try_start_0
    iget v3, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v4, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    invoke-static {v0, v3, v4}, Lbad;->a(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
    :try_end_0
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v3

    iget v3, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v4, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    new-instance v5, Lcom/google/android/gms/common/internal/zzy;

    invoke-direct {v5, v0}, Lcom/google/android/gms/common/internal/zzy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-ltz v3, :cond_3

    const/4 v0, 0x3

    if-ge v3, v0, :cond_3

    move v0, v1

    :goto_3
    const-string v7, "Unknown button size %d"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v0, v7, v8}, Lg;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz v4, :cond_4

    if-ge v4, v12, :cond_4

    move v0, v1

    :goto_4
    const-string v7, "Unknown color scheme %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v0, v7, v1}, Lg;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/internal/zzy;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x4160

    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/internal/zzy;->setTextSize(F)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v0, v11

    add-float/2addr v1, v10

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/common/internal/zzy;->setMinHeight(I)V

    mul-float/2addr v0, v11

    add-float/2addr v0, v10

    float-to-int v0, v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/internal/zzy;->setMinWidth(I)V

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown button size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :pswitch_0
    sget v0, Lcom/google/android/gms/R$drawable;->common_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/R$drawable;->common_signin_btn_text_light:I

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/common/internal/zzy;->a(III)I

    move-result v0

    :goto_5
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find background resource!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget v0, Lcom/google/android/gms/R$drawable;->common_signin_btn_icon_dark:I

    sget v1, Lcom/google/android/gms/R$drawable;->common_signin_btn_icon_light:I

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/common/internal/zzy;->a(III)I

    move-result v0

    goto :goto_5

    :cond_5
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/internal/zzy;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/google/android/gms/R$color;->common_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/R$color;->common_signin_btn_text_light:I

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/common/internal/zzy;->a(III)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/internal/zzy;->setTextColor(Landroid/content/res/ColorStateList;)V

    packed-switch v3, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown button size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/internal/zzy;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iput-object v5, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    goto/16 :goto_2

    :pswitch_3
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text_long:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/internal/zzy;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/internal/zzy;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setColorScheme(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/SignInButton;->a(II)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setSize(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->a(II)V

    return-void
.end method
