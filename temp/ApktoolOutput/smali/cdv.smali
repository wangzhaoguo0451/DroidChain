.class public final Lcdv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/unionpay/mpay/views/j;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcdv;->b:Lcom/unionpay/mpay/views/j;

    iput-object p2, p0, Lcdv;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcdv;->b:Lcom/unionpay/mpay/views/j;

    iget-object v1, p0, Lcdv;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/unionpay/mpay/views/j;->b:Lcem;

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcem;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/unionpay/mpay/utils/n;

    invoke-direct {v2, v1, v0}, Lcom/unionpay/mpay/utils/n;-><init>(Ljava/lang/String;Lcom/unionpay/mpay/utils/n$a;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
