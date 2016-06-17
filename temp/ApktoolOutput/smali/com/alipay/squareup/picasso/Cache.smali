.class public interface abstract Lcom/alipay/squareup/picasso/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field public static final NONE:Lcom/alipay/squareup/picasso/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Laax;

    invoke-direct {v0}, Laax;-><init>()V

    sput-object v0, Lcom/alipay/squareup/picasso/Cache;->NONE:Lcom/alipay/squareup/picasso/Cache;

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract maxSize()I
.end method

.method public abstract set(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract size()I
.end method
