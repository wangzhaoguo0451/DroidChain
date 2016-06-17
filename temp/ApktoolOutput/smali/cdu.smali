.class public final Lcdu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/e;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/e;)V
    .locals 0

    iput-object p1, p0, Lcdu;->a:Lcom/unionpay/mpay/views/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcdu;->a:Lcom/unionpay/mpay/views/e;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/e;->g()V

    iget-object v0, p0, Lcdu;->a:Lcom/unionpay/mpay/views/e;

    iget-object v0, v0, Lcom/unionpay/mpay/views/e;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcdu;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v0}, Lcom/unionpay/mpay/views/e;->d(Lcom/unionpay/mpay/views/e;)V

    return-void
.end method
