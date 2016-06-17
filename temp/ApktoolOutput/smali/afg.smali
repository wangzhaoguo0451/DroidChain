.class public final Lafg;
.super Laez;
.source "SourceFile"


# instance fields
.field private a:Lafc;

.field private b:I

.field private c:I

.field private q:Landroid/os/CountDownTimer;

.field private r:Landroid/widget/Button;

.field private s:Lafc;

.field private t:[Ljava/lang/String;

.field private u:[Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Laez;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic a(Lafg;)Lafc;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lafg;->s:Lafc;

    return-object v0
.end method

.method static synthetic b(Lafg;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lafg;->r:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 75
    const-string v0, "mini_ui_button"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lafg;->r:Landroid/widget/Button;

    iget-object v0, p0, Lafg;->t:[Ljava/lang/String;

    invoke-static {p1, v0}, Lafz;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lafg;->r:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lafg;->u:[Ljava/lang/String;

    invoke-static {v0}, Lafz;->a([Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lafg;->r:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Laez;->f:F

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Lafz;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    new-instance v0, Lafh;

    invoke-direct {v0, p0}, Lafh;-><init>(Lafg;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laez;->k:Ljava/lang/String;

    new-instance v1, Lafi;

    invoke-direct {v1, p0}, Lafi;-><init>(Lafg;)V

    invoke-static {v0, v1}, Lafz;->a(Ljava/lang/String;Ladj;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 57
    invoke-super {p0, p1}, Laez;->a(Lorg/json/JSONObject;)V

    .line 58
    const-string v0, "onclick"

    invoke-static {p1, v0}, Lafc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lafc;

    move-result-object v0

    iput-object v0, p0, Lafg;->s:Lafc;

    .line 59
    const-string v0, "onload"

    invoke-static {p1, v0}, Lafc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lafc;

    move-result-object v0

    iput-object v0, p0, Lafg;->a:Lafc;

    .line 60
    const-string v0, "time"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lafg;->c:I

    .line 62
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lafg;->t:[Ljava/lang/String;

    .line 63
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lafg;->u:[Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lafg;->t:[Ljava/lang/String;

    iget-object v1, p0, Lafg;->u:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lafz;->a([Ljava/lang/String;[Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 66
    return-void
.end method

.method protected final d()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-object v0, p0, Lafg;->a:Lafc;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lafg;->a:Lafc;

    invoke-static {v0}, Lcom/alipay/wandoujia/ra;->a(Lafc;)Lcom/alipay/wandoujia/ra;

    move-result-object v1

    .line 149
    sget-object v0, Lcom/alipay/wandoujia/ra;->t:Lcom/alipay/wandoujia/ra;

    if-ne v1, v0, :cond_0

    .line 151
    iget-object v0, p0, Laez;->o:Lcom/alipay/wandoujia/sg;

    check-cast v0, Ladx;

    .line 153
    if-eqz v0, :cond_3

    .line 154
    iget-object v0, v0, Ladx;->a:Ljava/util/List;

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 163
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/alipay/wandoujia/ra;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafw;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lafg;->b:I

    .line 165
    const/16 v0, 0x3e8

    iput v0, p0, Lafg;->c:I

    .line 166
    iget-object v0, p0, Lafg;->r:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    new-instance v0, Lafj;

    iget v1, p0, Lafg;->b:I

    int-to-long v2, v1

    iget v1, p0, Lafg;->c:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lafj;-><init>(Lafg;JJ)V

    iput-object v0, p0, Lafg;->q:Landroid/os/CountDownTimer;

    .line 194
    iget-object v0, p0, Lafg;->q:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 155
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/sh;

    .line 156
    instance-of v3, v0, Lafs;

    if-eqz v3, :cond_2

    .line 157
    check-cast v0, Lafs;

    iget-object v0, v0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-static {v0}, Lafz;->a(Landroid/widget/EditText;)V

    goto :goto_1
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lafg;->r:Landroid/widget/Button;

    .line 81
    invoke-static {v0}, Lafd;->a(Landroid/view/View;)V

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lafg;->j()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-super {p0}, Laez;->i()V

    .line 216
    iput-object v0, p0, Lafg;->q:Landroid/os/CountDownTimer;

    .line 217
    iput-object v0, p0, Lafg;->r:Landroid/widget/Button;

    .line 218
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lafg;->r:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget v0, p0, Lafg;->b:I

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lafg;->r:Landroid/widget/Button;

    new-instance v1, Lafk;

    invoke-direct {v1, p0}, Lafk;-><init>(Lafg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
