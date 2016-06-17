.class public final Lfpq;
.super Ljava/lang/Object;
.source "LocalImageController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfpr;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lfpq;->b:Ljava/lang/String;

    .line 396
    iput-object p2, p0, Lfpq;->c:Ljava/lang/String;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfpq;->a:Ljava/util/ArrayList;

    .line 398
    return-void
.end method
