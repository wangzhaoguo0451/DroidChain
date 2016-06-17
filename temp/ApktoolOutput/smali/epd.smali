.class final Lepd;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lepb;


# direct methods
.method constructor <init>(Lepb;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lepd;->b:Lepb;

    iput-object p2, p0, Lepd;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lepd;->b:Lepb;

    iget-object v1, p0, Lepd;->a:Landroid/content/Context;

    invoke-static {v1}, Leqp;->a(Landroid/content/Context;)Leqp;

    move-result-object v1

    iput-object v1, v0, Lepb;->c:Leqp;

    .line 117
    return-void
.end method
