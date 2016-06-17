.class public final Laeg;
.super Laez;
.source "SourceFile"


# instance fields
.field private a:Lafc;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Laez;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Laeg;->b:Landroid/widget/TextView;

    .line 21
    return-void
.end method

.method static synthetic a(Laeg;)Lafc;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Laeg;->a:Lafc;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 34
    const-string v0, "mini_ui_link"

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
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Laeg;->b:Landroid/widget/TextView;

    iget-object v0, p0, Laeg;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Laez;->i:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<u>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    new-instance v0, Laeh;

    invoke-direct {v0, p0}, Laeh;-><init>(Laeg;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Laez;->a(Lorg/json/JSONObject;)V

    .line 29
    const-string v0, "onclick"

    invoke-static {p1, v0}, Lafc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lafc;

    move-result-object v0

    iput-object v0, p0, Laeg;->a:Lafc;

    .line 30
    return-void
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Laeg;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Laeg;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lafd;->a(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Laeg;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Laeg;->j()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Laez;->i()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Laeg;->b:Landroid/widget/TextView;

    .line 85
    return-void
.end method
