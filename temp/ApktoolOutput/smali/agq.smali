.class public final Lagq;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:J

.field private synthetic c:Lcom/android/volley/Request;


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lagq;->c:Lcom/android/volley/Request;

    iput-object p2, p0, Lagq;->a:Ljava/lang/String;

    iput-wide p3, p0, Lagq;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lagq;->c:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->a(Lcom/android/volley/Request;)Lagy;

    move-result-object v0

    iget-object v1, p0, Lagq;->a:Ljava/lang/String;

    iget-wide v2, p0, Lagq;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lagy;->a(Ljava/lang/String;J)V

    .line 209
    iget-object v0, p0, Lagq;->c:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->a(Lcom/android/volley/Request;)Lagy;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lagy;->a(Ljava/lang/String;)V

    .line 210
    return-void
.end method
