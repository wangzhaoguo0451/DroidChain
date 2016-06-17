.class final Lcwn;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcxj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcxj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcvw;


# direct methods
.method constructor <init>(Lcvw;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcwn;->a:Lcvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcwn;->a:Lcvw;

    invoke-interface {v0}, Lcvw;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
