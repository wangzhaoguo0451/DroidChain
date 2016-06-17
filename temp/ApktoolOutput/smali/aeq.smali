.class final Laeq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laep;


# direct methods
.method constructor <init>(Laep;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laeq;->a:Laep;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Laeq;->a:Laep;

    invoke-static {v0}, Laep;->a(Laep;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lafz;->a(Landroid/widget/EditText;)V

    .line 83
    return-void
.end method
