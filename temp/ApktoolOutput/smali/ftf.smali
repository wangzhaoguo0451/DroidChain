.class final Lftf;
.super Ljava/lang/Object;
.source "NetworkAsyncLoadPageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfte;


# direct methods
.method constructor <init>(Lfte;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lftf;->a:Lfte;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lftf;->a:Lfte;

    iget-object v0, v0, Lfte;->a:Lftd;

    invoke-virtual {v0}, Lftd;->a()V

    .line 581
    return-void
.end method
