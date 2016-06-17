.class final Lbtf;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbte;


# direct methods
.method constructor <init>(Lbte;)V
    .locals 0
    .parameter

    .prologue
    .line 1117
    iput-object p1, p0, Lbtf;->a:Lbte;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lbtf;->a:Lbte;

    iget-object v0, v0, Lbte;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->p(Lcom/nispok/snackbar/Snackbar;)V

    .line 1121
    return-void
.end method
