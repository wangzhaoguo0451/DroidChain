.class public final Lcdh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/aj;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/aj;)V
    .locals 0

    iput-object p1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/aj;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v0}, Lcom/unionpay/mpay/views/aj;->a(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    iget-object v0, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v0}, Lcom/unionpay/mpay/views/aj;->a(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/a;->a(Z)Lcex;

    move-result-object v0

    invoke-virtual {v0}, Lcex;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v1}, Lcom/unionpay/mpay/views/aj;->b(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v1}, Lcom/unionpay/mpay/views/aj;->b(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mpay_2/upwidget/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v1}, Lcom/unionpay/mpay/views/aj;->b(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mpay_2/upwidget/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v1}, Lcom/unionpay/mpay/views/aj;->c(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v1}, Lcom/unionpay/mpay/views/aj;->c(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mpay_2/upwidget/a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v1}, Lcom/unionpay/mpay/views/aj;->c(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mpay_2/upwidget/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    iget-object v1, v1, Lcom/unionpay/mpay/views/aj;->b:Lcem;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcem;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    iget-object v1, v1, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v1, v1, Lcfz;->t:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    iget-object v1, v1, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v1, v1, Lcfz;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    iget-object v2, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v2}, Lcom/unionpay/mpay/views/aj;->d(Lcom/unionpay/mpay/views/aj;)Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/unionpay/mpay/views/aj;->a(Lcom/unionpay/mpay/views/aj;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcdh;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v1, v0}, Lcom/unionpay/mpay/views/aj;->a(Lcom/unionpay/mpay/views/aj;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
