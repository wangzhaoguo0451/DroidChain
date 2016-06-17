.class final Lczh;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcwi;


# instance fields
.field private synthetic a:Lczv;

.field private synthetic b:Lcwh;


# direct methods
.method constructor <init>(Lczv;Lcwh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lczh;->a:Lczv;

    iput-object p2, p0, Lczh;->b:Lcwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcvo;Lczv;)Lcwh;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcvo;",
            "Lczv",
            "<TT;>;)",
            "Lcwh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lczh;->a:Lczv;

    invoke-virtual {p2, v0}, Lczv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lczh;->b:Lcwh;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
