.class final Ldxd;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Lbtk;


# instance fields
.field private synthetic a:Lbtk;


# direct methods
.method constructor <init>(Lbtk;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Ldxd;->a:Lbtk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nispok/snackbar/Snackbar;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Ldxd;->a:Lbtk;

    invoke-interface {v0, p1}, Lbtk;->a(Lcom/nispok/snackbar/Snackbar;)V

    .line 110
    invoke-static {}, Lbth;->a()V

    .line 111
    return-void
.end method
