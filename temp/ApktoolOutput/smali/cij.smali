.class final Lcij;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Lcvy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcvy",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcvz;->e()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
