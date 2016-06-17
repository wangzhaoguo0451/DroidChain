.class final Laex;
.super Ladj;
.source "SourceFile"


# instance fields
.field private synthetic a:Laew;


# direct methods
.method constructor <init>(Laew;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laex;->a:Laew;

    .line 53
    invoke-direct {p0}, Ladj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Laex;->a:Laew;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Laew;->c:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Laex;->a:Laew;

    iput-object p1, v0, Laew;->c:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final onError()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
