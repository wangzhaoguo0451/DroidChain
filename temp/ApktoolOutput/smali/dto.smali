.class final Ldto;
.super Ljava/lang/Object;
.source "JupiterPublisher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/concurrent/CountDownLatch;

.field private synthetic b:Ldtr;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Ldtr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Ldto;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Ldto;->b:Ldtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Ldto;->a:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Ldto;->b:Ldtr;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ldtl;->a(Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V

    .line 132
    return-void
.end method
