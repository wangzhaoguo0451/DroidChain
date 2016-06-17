.class final Lauu;
.super Ljava/lang/Object;
.source "ThrottlingProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/util/Pair;

.field private synthetic b:Laut;


# direct methods
.method constructor <init>(Laut;Landroid/util/Pair;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lauu;->b:Laut;

    iput-object p2, p0, Lauu;->a:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lauu;->b:Laut;

    iget-object v2, v0, Laut;->a:Laus;

    iget-object v0, p0, Lauu;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lask;

    iget-object v1, p0, Lauu;->a:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Laue;

    invoke-virtual {v2, v0, v1}, Laus;->b(Lask;Laue;)V

    .line 118
    return-void
.end method
