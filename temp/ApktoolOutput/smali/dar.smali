.class abstract Ldar;
.super Ljava/lang/Object;
.source "ImageManager.java"


# instance fields
.field protected final c:I

.field protected final d:I

.field protected final e:Ldat;


# direct methods
.method constructor <init>(Ldat;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput p2, p0, Ldar;->c:I

    .line 739
    iput p3, p0, Ldar;->d:I

    .line 740
    iput-object p1, p0, Ldar;->e:Ldat;

    .line 741
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract b()V
.end method
