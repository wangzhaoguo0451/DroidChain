.class final Larj;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"

# interfaces
.implements Lakn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lakn",
        "<[B>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lari;


# direct methods
.method constructor <init>(Lari;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Larj;->a:Lari;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    check-cast p1, [B

    iget-object v0, p0, Larj;->a:Lari;

    iget-object v0, v0, Lari;->a:Lark;

    invoke-virtual {v0, p1}, Lark;->a(Ljava/lang/Object;)V

    return-void
.end method
