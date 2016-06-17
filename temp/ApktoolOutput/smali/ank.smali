.class public final Lank;
.super Ljava/lang/Object;
.source "AnimatedDrawableOptions.java"


# static fields
.field public static a:Lank;


# instance fields
.field public final b:Z

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lanl;

    invoke-direct {v0}, Lanl;-><init>()V

    new-instance v1, Lank;

    invoke-direct {v1, v0}, Lank;-><init>(Lanl;)V

    sput-object v1, Lank;->a:Lank;

    return-void
.end method

.method private constructor <init>(Lanl;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-boolean v0, p1, Lanl;->a:Z

    iput-boolean v0, p0, Lank;->b:Z

    .line 52
    iget v0, p1, Lanl;->b:I

    iput v0, p0, Lank;->c:I

    .line 53
    return-void
.end method
