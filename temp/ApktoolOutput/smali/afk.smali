.class final Lafk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lafg;


# direct methods
.method constructor <init>(Lafg;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafk;->a:Lafg;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lafk;->a:Lafg;

    invoke-virtual {v0}, Lafg;->d()V

    .line 209
    return-void
.end method
