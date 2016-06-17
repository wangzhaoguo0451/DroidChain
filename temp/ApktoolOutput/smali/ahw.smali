.class final Lahw;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lahq;

.field private synthetic b:Lahv;


# direct methods
.method constructor <init>(Lahv;Lahq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lahw;->b:Lahv;

    iput-object p2, p0, Lahw;->a:Lahq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lahw;->b:Lahv;

    iget-object v1, p0, Lahw;->a:Lahq;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lahv;->a(Lahq;Z)V

    .line 156
    return-void
.end method
