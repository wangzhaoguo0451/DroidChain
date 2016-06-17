.class final Ldtq;
.super Ljava/lang/Object;
.source "JupiterPublisher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Ljava/util/concurrent/CountDownLatch;

.field private synthetic b:Ldtr;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Ldtr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Ldtq;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Ldtq;->b:Ldtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Ldtq;->a:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Ldtq;->b:Ldtr;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ldtl;->a(Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V

    .line 146
    return-void
.end method
