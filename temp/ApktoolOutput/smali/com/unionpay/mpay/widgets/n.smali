.class public abstract Lcom/unionpay/mpay/widgets/n;
.super Lcom/unionpay/mpay/widgets/m;


# instance fields
.field protected l:I

.field public m:Lcom/unionpay/mpay/widgets/h;

.field public n:Lcom/unionpay/mpay/widgets/n$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mpay/widgets/n;-><init>(Landroid/content/Context;ILorg/json/JSONObject;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;IB)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, p1, p3}, Lcom/unionpay/mpay/widgets/m;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/n;->n:Lcom/unionpay/mpay/widgets/n$a;

    iput p2, p0, Lcom/unionpay/mpay/widgets/n;->l:I

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->d:Landroid/content/Context;

    invoke-static {v0}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v0

    if-eq p4, v4, :cond_4

    invoke-virtual {v0, p4, v4, v4}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/n;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/unionpay/mpay/widgets/h;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    iget-boolean v0, p0, Lcom/unionpay/mpay/widgets/n;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    iput-boolean v5, v0, Lcom/unionpay/mpay/widgets/h;->c:Z

    iget-object v2, v0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v1, v0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v1, v0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/h;->b()V

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/n;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/n;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    const-string v1, "placeholder"

    invoke-static {p3, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    new-instance v1, Lcer;

    invoke-direct {v1}, Lcer;-><init>()V

    iget-object v2, v0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/unionpay/mpay/widgets/h;->c:Z

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_3
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    new-instance v1, Lces;

    invoke-direct {v1, p0}, Lces;-><init>(Lcom/unionpay/mpay/widgets/n;)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(Landroid/text/TextWatcher;)V

    return-void

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/unionpay/mpay/widgets/n;)Lcom/unionpay/mpay/widgets/n$a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->n:Lcom/unionpay/mpay/widgets/n$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/unionpay/mpay/widgets/h;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/n;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unionpay/mpay/widgets/n;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/h;->c()V

    :cond_0
    return-void
.end method
