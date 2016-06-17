.class public final Lcdc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/ab;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/ab;)V
    .locals 0

    iput-object p1, p0, Lcdc;->a:Lcom/unionpay/mpay/views/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcdc;->a:Lcom/unionpay/mpay/views/ab;

    iget-object v0, v0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcfz;->y:Z

    iget-object v0, p0, Lcdc;->a:Lcom/unionpay/mpay/views/ab;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/views/ab;->e(I)V

    return-void
.end method
