.class public final Lemb;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput p1, p0, Lemb;->a:I

    .line 361
    iput-object p2, p0, Lemb;->b:Ljava/lang/String;

    .line 362
    iput-object p3, p0, Lemb;->c:Ljava/lang/String;

    .line 363
    return-void
.end method
