.class final Ldap;
.super Ljava/lang/Object;
.source "ImageManager.java"


# instance fields
.field final a:Ldar;

.field final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ldaq;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ldar;Ldaq;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ldap;->b:Ljava/util/LinkedList;

    .line 689
    iput-object p1, p0, Ldap;->a:Ldar;

    .line 690
    iget-object v0, p0, Ldap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 691
    return-void
.end method


# virtual methods
.method public final a(Ldaq;)V
    .locals 1
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Ldap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 699
    return-void
.end method

.method public final b(Ldaq;)Z
    .locals 1
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Ldap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 710
    iget-object v0, p0, Ldap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Ldap;->a:Ldar;

    invoke-virtual {v0}, Ldar;->b()V

    .line 712
    const/4 v0, 0x1

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
